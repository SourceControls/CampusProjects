import React, {useState, useEffect, useMemo} from 'react';
import {getListTour} from '../../utils/services';
import css from './style.module.css';
import calendarSvg from '../../assets/svg/calendar.svg';
import destinationSvg from '../../assets/svg/destination.svg';
import hourglassSvg from '../../assets/svg/hourglass.svg';
import formatMoney from './../../utils/formatMoney';
import formatDate from './../../utils/formatDate';

function SearchedTour({searchKey, tours, handleLoadData}) {
    return (
        <div>
            <p class={css['search-heading']}>Kết quả tìm kiếm cho: {searchKey}</p>
            <div className={css['card-container']}>
                {tours.map((e, i) => {
                    return (
                        <a className={css.card} href={'/tour-detail/' + e.idTour}>
                            <img src={e.imageUrl[0]} alt='' className={css.bg} />
                            <div className={css.infor}>
                                <h2>{e.name}</h2>
                                <div className='row-wrapper flex-align-l mt--12'>
                                    <img src={destinationSvg} alt='' /> &nbsp;&nbsp;
                                    {e.tourDestination}
                                </div>
                                <div className='row-wrapper flex-align-l mt--12'>
                                    <img src={hourglassSvg} alt='' /> &nbsp;&nbsp;
                                    {e.totalDay} ngày
                                </div>
                                <div className='row-wrapper flex-align-l mt--12'>
                                    <img src={calendarSvg} alt='' /> &nbsp;&nbsp;
                                    {formatDate(e.startDate)[0]}
                                </div>
                                <label className={css.price}>{formatMoney(e.price)}</label>
                            </div>
                        </a>
                    );
                })}
                <div>
                    <p
                        onClick={handleLoadData}
                        className='mt--12'
                        style={{
                            textAlign: 'center',
                            cursor: 'pointer',
                            color: 'var(--gold)',
                            textDecoration: 'underline',
                        }}>
                        Xem thêm
                    </p>
                </div>
            </div>
        </div>
    );
}

export default SearchedTour;
