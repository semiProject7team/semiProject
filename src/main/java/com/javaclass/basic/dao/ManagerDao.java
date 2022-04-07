package com.javaclass.basic.dao;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.basic.vo.AddInfoVO;
import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.LocationVO;
import com.javaclass.basic.vo.MemberVO;
import com.javaclass.basic.vo.OrderGoodsVO;
import com.javaclass.basic.vo.OrdersVO;
import com.javaclass.basic.vo.ShopListVO;
import com.javaclass.basic.vo.SizeVO;

@Repository
public class ManagerDao {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public List<MemberVO> getMemberList(){
		return sql.selectList("managerMapper.memberList");
	}	
	
	public List<GoodsVO> getPageGoodsList(HashMap h){
		return sql.selectList("managerMapper.getPageGoodsList",h);
	}
	
	public void InsertGoods(GoodsVO vo) {
		sql.insert("managerMapper.InsertGoods",vo);
	}
	
	public List<LocationVO> getLocationList(){
		return sql.selectList("managerMapper.getLocationList");
	}
	
	public List<ShopListVO> getShopList(){
		return sql.selectList("managerMapper.getShopList");
	}
	
	public List<SizeVO> getSizeList(){
		return sql.selectList("managerMapper.getSizeList");
	}
	
	public List<AddInfoVO> getShopInfoList(){
		return sql.selectList("managerMapper.getShopInfoList");
	}
	
	public MemberVO getMemberCount() {
		return sql.selectOne("managerMapper.getMemberCount");
	}
	
	public List<MemberVO> getPageMemberList(HashMap h) {
		return sql.selectList("managerMapper.getPageMemberList",h);
	}
	
	public MemberVO getMemberInfo(MemberVO vo) {
		return sql.selectOne("managerMapper.getMemberInfo",vo);
	}
	
	public void deleteMember(MemberVO vo) {
		List<OrdersVO> list = sql.selectList("managerMapper.getOrdersByMemberId",vo);
		for(OrdersVO vv : list) {
			sql.delete("managerMapper.deleteMemberInOrderGoods",vv);
			sql.delete("managerMapper.deleteMemberInReview",vv);
		}
		sql.delete("managerMapper.deleteMemberInOrders",vo);
		sql.delete("managerMapper.deleteMemberInCart",vo);
		sql.delete("managerMapper.deleteMember",vo);
	}
	
	public List<MemberVO> memberSearch(MemberVO vo) {
		return sql.selectList("managerMapper.memberSearch",vo);
	}
	
	public List<MemberVO> selectOption(MemberVO vo){
		return sql.selectList("managerMapper.selectOption",vo);
	}
	
	public GoodsVO getGoodsCount() {
		return sql.selectOne("managerMapper.getGoodsCount");
	}
	
	public GoodsVO getGoodsInfo(GoodsVO vo) {
		return sql.selectOne("managerMapper.getGoodsInfo",vo);
	}
	
	public void deleteGoods(GoodsVO vo) {
		sql.delete("managerMapper.deleteGoodsInOrderGoods",vo);
		sql.delete("managerMapper.deleteGoodsInReview",vo);
		sql.delete("managerMapper.deleteGoodsInCart",vo);
		sql.delete("managerMapper.deleteGoodsInAdd",vo);
		sql.delete("managerMapper.deleteGoods",vo);
	}
	
	public void managerGoodsUpdate(GoodsVO vo) {
		sql.update("managerMapper.managerGoodsUpdate",vo);
	}
	
	public List<GoodsVO> goodsSelectOption(GoodsVO vo){ 
		return sql.selectList("managerMapper.goodsSelectOption",vo);
	}
	
	public List<GoodsVO> goodsSearch(GoodsVO vo){
		return sql.selectList("managerMapper.goodsSearch",vo);
	}
	
	public LocationVO getLocationCount() {
		return sql.selectOne("managerMapper.getLocationCount");
	}
	
	public List<LocationVO> getPageLocationList(HashMap h) {
		return sql.selectList("managerMapper.getPageLocationList",h);
	}
	
	public List<LocationVO> locationSelectOption(LocationVO vo){
		return sql.selectList("managerMapper.locationSelectOption",vo);
	}
	
	public List<LocationVO> locationSearch(LocationVO vo){
		return sql.selectList("managerMapper.locationSearch",vo);
	}
	
	public SizeVO getSizeCount(){
		return sql.selectOne("managerMapper.getSizeCount");
	}
	
	public List<SizeVO> getPageSizeList(HashMap h){
		return sql.selectList("managerMapper.getPageSizeList",h);
	}
	
	public List<SizeVO> sizeSelectOption(SizeVO vo){
		return sql.selectList("managerMapper.sizeSelectOption",vo);
	}
	
	public List<SizeVO> sizeSearch(SizeVO vo){
		return sql.selectList("managerMapper.sizeSearch",vo);
	}
	
	public ShopListVO getShopListCount() {
		return sql.selectOne("managerMapper.getShopListCount");
	}
	
	public List<ShopListVO> getPageShopList(HashMap h){
		return sql.selectList("managerMapper.getPageShopList",h);
	}
	
	public List<ShopListVO> shopListSelectOption(ShopListVO vo){
		return sql.selectList("managerMapper.shopListSelectOption",vo);
	}
	
	public List<ShopListVO> shopListSearch(ShopListVO vo){
		return sql.selectList("managerMapper.shopListSearch",vo);
	}
	
	public ShopListVO getShopInfoByShopNo(AddInfoVO vo) {
		return sql.selectOne("managerMapper.getShopInfoByShopNo",vo);
	}
	
	public List<AddInfoVO> getGoodsInShopInfo(AddInfoVO vo){
		return sql.selectList("managerMapper.getGoodsInShopInfo",vo);
	}
	
	public List<AddInfoVO> getGoodsInShopSize(AddInfoVO vo){
		return sql.selectList("managerMapper.getGoodsInShopSize",vo);
	}
	
	public AddInfoVO getKindsOfGoodsCnt(AddInfoVO vo){
		return sql.selectOne("managerMapper.getKindsOfGoodsCnt",vo);
	}
	
	public List<AddInfoVO> getPageGoodsNoList(HashMap h){
		return sql.selectList("managerMapper.getPageGoodsNoList",h);
	}
	
	public void managerShopDelete(ShopListVO vo) {
		if(sql.selectList("managerMapper.goodsSizeShopCheck",vo)!=null) {
			sql.delete("managerMapper.managerShopDelete",vo);
		}
		
		sql.delete("managerMapper.managerShopDeleteList",vo);
	}
	
	public void managerInsertShop(ShopListVO vo) {
		sql.insert("managerMapper.managerInsertShop",vo);
	}
	
	public LocationVO checkLocSn(ShopListVO vo) {
		return sql.selectOne("managerMapper.checkLocSn",vo);
	}
	
	public GoodsVO checkGoodsNoInGoods(AddInfoVO vo) {
		return sql.selectOne("managerMapper.checkGoodsNoInGoods",vo);
	}
	
	public List<AddInfoVO> checkGoodsNoInadd(AddInfoVO vo) {
		return sql.selectList("managerMapper.checkGoodsNoInadd",vo);
	}
	
	public SizeVO checkSizeInGoodsSize(AddInfoVO vo) {
		return sql.selectOne("managerMapper.checkSizeInGoodsSize",vo);
	}
	
	public ShopListVO getShopInfoByNo(AddInfoVO vo) {
		return sql.selectOne("managerMapper.getShopInfoByNo",vo);
	}
	
	public void shopGoodsInsert(AddInfoVO vo) {
		sql.insert("managerMapper.shopGoodsInsert",vo);
	}
	
	public AddInfoVO checkSizeInAdd(AddInfoVO vo) {
		return sql.selectOne("managerMapper.checkSizeInAdd",vo);
	}
	
	public void shopGoodsSizeDelete(AddInfoVO vo) {
		sql.delete("managerMapper.shopGoodsSizeDelete",vo);
	}
	
	public LocationVO checkLocName(LocationVO vo) {
		return sql.selectOne("managerMapper.checkLocName",vo);
	}
	
	public void managerInsertLocation(LocationVO vo) {
		sql.insert("managerMapper.managerInsertLocation",vo);
	}
	
	public List<LocationVO> getLocNameList() {
		return sql.selectList("managerMapper.getLocNameList");
	}
	
	public void deleteLocation(LocationVO vo) {
		List<ShopListVO> shoplist = sql.selectList("managerMapper.selectShopByLocName",vo);
		for(ShopListVO vv : shoplist) {
			sql.delete("managerMapper.deleteAddInfoByShopNo",vv);
			sql.delete("managerMapper.deleteShopListByShopNo",vv);
		}
		sql.delete("managerMapper.deleteLocation",vo);
	}
	
	public void managerGoodsInShopDelete(AddInfoVO vo) {
		sql.delete("managerMapper.managerGoodsInShopDelete",vo);
	}
	
	public SizeVO checkGoodsSize(SizeVO vo) {
		return sql.selectOne("managerMapper.checkGoodsSize",vo);
	}
	
	public void insertSize(SizeVO vo) {
		sql.insert("managerMapper.insertSize",vo);
	}
	
	public void deleteGoodsSize(SizeVO vo) {
		sql.delete("managerMapper.deleteGoodsSizeInAddInfo",vo);
		sql.delete("managerMapper.deleteGoodsSizeInGoodsSize",vo);
	}
	
	public List<SizeVO> getGoodsSizeList(){
		return sql.selectList("managerMapper.getGoodsSizeList");
	}
	
	public List<OrdersVO> getOrdersByMemberId(MemberVO vo) {
		return sql.selectList("managerMapper.getOrdersByMemberId",vo);
	}
	
	public OrdersVO ordersSearch(OrdersVO vo) {
		return sql.selectOne("managerMapper.ordersSearch",vo);
	}
	
	public List<OrderGoodsVO> selectOrderGoodsByOrderNo(OrderGoodsVO vo){
		return sql.selectList("managerMapper.selectOrderGoodsByOrderNo",vo);
	}
}
