package com.javaclass.basic.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.basic.dao.ManagerDao;
import com.javaclass.basic.vo.AddInfoVO;
import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.LocationVO;
import com.javaclass.basic.vo.MemberVO;
import com.javaclass.basic.vo.OrderGoodsVO;
import com.javaclass.basic.vo.OrdersVO;
import com.javaclass.basic.vo.ShopListVO;
import com.javaclass.basic.vo.SizeVO;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	private ManagerDao dao;
	
	public List<MemberVO> getMemberList(){
		return dao.getMemberList();
	}
	
	public List<GoodsVO> getPageGoodsList(HashMap h){
		return dao.getPageGoodsList(h);
	}
	
	public void InsertGoods(GoodsVO vo) {
		dao.InsertGoods(vo);
	}
	
	public List<LocationVO> getLocationList(){
		return dao.getLocationList();
	}
	
	public List<ShopListVO> getShopList(){
		return dao.getShopList();
	}
	
	public List<SizeVO> getSizeList(){
		return dao.getSizeList();
	}
	
	public List<AddInfoVO> getShopInfoList(){
		return dao.getShopInfoList();
	}
	
	public MemberVO getMemberCount() {
		return dao.getMemberCount();
	}
	
	public List<MemberVO> getPageMemberList(HashMap h) {
		return dao.getPageMemberList(h);
	}
	
	public MemberVO getMemberInfo(MemberVO vo) {
		return dao.getMemberInfo(vo);
	}
	
	public void deleteMember(MemberVO vo) {
		dao.deleteMember(vo);
	}
	
	public List<MemberVO> memberSearch(MemberVO vo) {
		return dao.memberSearch(vo);
	}
	
	public List<MemberVO> selectOption(MemberVO vo){
		return dao.selectOption(vo);
	}
	
	public GoodsVO getGoodsCount() {
		return dao.getGoodsCount();
	}
	
	public GoodsVO getGoodsInfo(GoodsVO vo) {
		return dao.getGoodsInfo(vo);
	}
	
	public void deleteGoods(GoodsVO vo) {
		dao.deleteGoods(vo);
	}
	
	public void managerGoodsUpdate(GoodsVO vo) {
		dao.managerGoodsUpdate(vo);
	}
	
	public List<GoodsVO> goodsSelectOption(GoodsVO vo){
		return dao.goodsSelectOption(vo);
	}
	
	public List<GoodsVO> goodsSearch(GoodsVO vo){
		return dao.goodsSearch(vo);
	}
	
	public LocationVO getLocationCount() {
		return dao.getLocationCount();
	}
	
	public List<LocationVO> getPageLocationList(HashMap h) {
		return dao.getPageLocationList(h);
	}
	
	public List<LocationVO> locationSelectOption(LocationVO vo){
		return dao.locationSelectOption(vo);
	}
	
	public List<LocationVO> locationSearch(LocationVO vo){
		return dao.locationSearch(vo);
	}
	
	public SizeVO getSizeCount(){
		return dao.getSizeCount();
	}
	
	public List<SizeVO> getPageSizeList(HashMap h){
		return dao.getPageSizeList(h);
	}
	
	public List<SizeVO> sizeSelectOption(SizeVO vo){
		return dao.sizeSelectOption(vo);
	}
	
	public List<SizeVO> sizeSearch(SizeVO vo){
		return dao.sizeSearch(vo);
	}
	
	public ShopListVO getShopListCount() {
		return dao.getShopListCount();
	}
	
	public List<ShopListVO> getPageShopList(HashMap h){
		return dao.getPageShopList(h);
	}
	
	public List<ShopListVO> shopListSelectOption(ShopListVO vo){
		return dao.shopListSelectOption(vo);
	}
	
	public List<ShopListVO> shopListSearch(ShopListVO vo){
		return dao.shopListSearch(vo);
	}
	
	public ShopListVO getShopInfoByShopNo(AddInfoVO vo) {
		return dao.getShopInfoByShopNo(vo);
	}
	
	public List<AddInfoVO> getGoodsInShopInfo(AddInfoVO vo){
		return dao.getGoodsInShopInfo(vo);
	}
	
	public List<AddInfoVO> getGoodsInShopSize(AddInfoVO vo){
		return dao.getGoodsInShopSize(vo);
	}
	
	public AddInfoVO getKindsOfGoodsCnt(AddInfoVO vo){
		return dao.getKindsOfGoodsCnt(vo);
	}
	
	public List<AddInfoVO> getPageGoodsNoList(HashMap h){
		return dao.getPageGoodsNoList(h);
	}
	
	public void managerShopDelete(ShopListVO vo) {
		dao.managerShopDelete(vo);
	}
	
	public void managerInsertShop(ShopListVO vo) {
		dao.managerInsertShop(vo);
	}
	
	public LocationVO checkLocSn(ShopListVO vo) {
		return dao.checkLocSn(vo);
	}
	
	public GoodsVO checkGoodsNoInGoods(AddInfoVO vo) {
		return dao.checkGoodsNoInGoods(vo); 
	}
	
	public List<AddInfoVO> checkGoodsNoInadd(AddInfoVO vo) {
		return dao.checkGoodsNoInadd(vo);
	}
	
	public SizeVO checkSizeInGoodsSize(AddInfoVO vo) {
		return dao.checkSizeInGoodsSize(vo);
	}
	
	public ShopListVO getShopInfoByNo(AddInfoVO vo) {
		return dao.getShopInfoByNo(vo);
	}
	
	public void shopGoodsInsert(AddInfoVO vo) {
		dao.shopGoodsInsert(vo);
	}
	
	public AddInfoVO checkSizeInAdd(AddInfoVO vo) {
		return dao.checkSizeInAdd(vo);
	}
	
	public void shopGoodsSizeDelete(AddInfoVO vo) {
		dao.shopGoodsSizeDelete(vo);
	}
	
	public LocationVO checkLocName(LocationVO vo) {
		return dao.checkLocName(vo);
	}
	
	public void managerInsertLocation(LocationVO vo) {
		dao.managerInsertLocation(vo);
	}
	
	public List<LocationVO> getLocNameList() {
		return dao.getLocNameList();
	}
	
	public void deleteLocation(LocationVO vo) {
		dao.deleteLocation(vo);
	}
	
	public void managerGoodsInShopDelete(AddInfoVO vo) {
		dao.managerGoodsInShopDelete(vo);
	}
	
	public SizeVO checkGoodsSize(SizeVO vo) {
		return dao.checkGoodsSize(vo);
	}
	
	public void insertSize(SizeVO vo) {
		dao.insertSize(vo);
	}
	
	public void deleteGoodsSize(SizeVO vo) {
		dao.deleteGoodsSize(vo);
	}
	
	public List<SizeVO> getGoodsSizeList(){
		return dao.getGoodsSizeList();
	}
	
	public List<OrdersVO> getOrdersByMemberId(MemberVO vo) {
		return dao.getOrdersByMemberId(vo);
	}
	
	public OrdersVO ordersSearch(OrdersVO vo) {
		return dao.ordersSearch(vo);
	}
	
	public List<OrderGoodsVO> selectOrderGoodsByOrderNo(OrderGoodsVO vo){
		return dao.selectOrderGoodsByOrderNo(vo);
	}
}
 