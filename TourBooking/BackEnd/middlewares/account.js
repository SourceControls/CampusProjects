const message = require("../utils/message");
const connection = require("../utils/connection");
async function accountInsert(req, res, next) {
  let { username, password } = req.body;
  if (req.body.email) username = req.body.email;
  console.log("accountInsert: ", username, password);
  if (!username || !password) {
    return res.send(
      message("", false, "Tên đăng nhập và mật khẩu không được để trống!")
    );
  }
  if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(username)) {
    return res.send(message("", false, "Email không hợp lệ!"));
  }

  if (password.length < 6) {
    return res.send(message("", false, "Mật khẩu có ít nhất 6 kí tự!"));
  }
  // check email đã có người đăng ký
  let [rows, fields] = await connection.execute(
    `call managetour.sp_get_customer_by_email('${username}');`
  );
  if (rows[0].length > 0) {
    return res.send(message("", false, "Email đã được đăng ký!"));
  }
  next();
}
module.exports = { accountInsert };
