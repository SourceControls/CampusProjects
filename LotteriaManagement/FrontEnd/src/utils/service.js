import { axios } from "./axios";

export async function getListAddress() {
  return axios.get("/site/list-address");
}

export async function signIn(data) {
  return axios.post("/account/sign-in", data);
}

export async function getListFood({ key = "", categoryId = "", page = 1 }) {
  return axios.get(
    `/food/list?key=${key}&categoryId=${categoryId}&page=${page}`
  );
}

export async function getListCategory() {
  return axios.get(`/category/list`);
}


export async function getListCustomer({ customerId = "", key = "", page = 1 }) {
  return axios.get(
    `/customer/list?customerId=${customerId}&key=${key}&page=${page}`
  );
}

export async function getListIngredient({
  key = "",
  wareHouseId = "",
  page = 1,
}) {
  return axios.get(
    `/ingredient/list?key=${key}&wareHouseId=${wareHouseId}&page=${page}`
  );
}


export async function addIngredient(data) {
  return axios.post("/ingredient/add", data);
}

export async function updateIngredient(data) {
  return axios.put("/ingredient/update", data);
}

export async function updateIngredientStock(data) {
  return axios.post("/ingredient/update-stock", data);
}

export async function getListWarehouse({ status = "" }) {
  return axios.get(`/ware-house/list?status=${status}`);
}

export async function getListPromotion() {
  return axios.get("/promotion/list");
}

export async function addPromotion(data) {
  return axios.post("/promotion/add", data);
}
export async function updatePromotion(data) {
  return axios.put("/promotion/update", data);
}

export async function getListPaymentMethod() {
  return axios.get("/payment-method/list");
}

export async function createOrder(data) {
  return axios.post("/order/create", data);
}

export async function addCustomer(data) {
  return axios.post("/customer/add", data);
}

export async function updateCustomer(data) {
  return axios.put("/customer/update", data);
}

export async function addUser(data) {
  return axios.post("/user/add", data);
}

export async function updateUser(data) {
  return axios.put("/user/update", data);
}

export async function getListUser({ key = "", userId = "", page = 1 }) {
  return axios.get(`/user/list?key=${key}&userId=${userId}&page=${page}`);
}

export async function getListRole() {
  return axios.get(`/role/list`);
}

export async function getListPriceList() {
  return axios.get('/price-list/list')
}
export async function getUserInfo(userId = '') {
  return axios.get('/user/list?getUserId=' + userId)
}

export async function changePassword(data) {
  return axios.patch('/account/chage-password', data)
}

export async function addPriceList(data) {
  return axios.post('/price-list/add', data)
}
export async function getProductPrice(foodId) {
  return axios.get('/product-price/list?foodId=' + foodId)
}
export async function addProductPrice(data) {
  return axios.post('/product-price/add', data)
}

export async function addFood(data) {
  return axios.post('/food/add', data)
}
export async function updateFood(data) {
  return axios.put('/food/update', data)
}
export async function report(date) {
  return axios.get(`/report?wareHouseId=1&top=10&from=${date}&to=${date}`)
}

export async function getListOrder({key = '', fromDate = '', toDate = '', page = 1}) {
  return axios.get(`/order/list?key=${key}&fromDate=${fromDate}&toDate=${toDate}&page=${page}`)
}

export async function updateOrderStatus(data) {
  return axios.patch('/order/update-status', data)
}

