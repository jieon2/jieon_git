package Recommendation;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;


public class RecommenderIntro extends HttpServlet {
	
	
/**
	 * 
	 */
	private static final long serialVersionUID = -256436033073344285L;

	/*
	 * private RecommenderIntro() {
	 * 
	 * }
	 */
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
	 	super.doPost(req, resp);
	  
	  try {
          DataModel model = new FileDataModel(new File("data/data.csv"));
          UserSimilarity similarity = new PearsonCorrelationSimilarity(model);
              /* System.out.println("similarity"); */ //similarity => user들간의 유사도 계산
          
          UserNeighborhood neighborhood = new NearestNUserNeighborhood(5, similarity, model); //나랑 가까운 사람이 몇명인지
              /* System.out.println("UserNeighborhood"); */
          
          
          Recommender recommender = new GenericUserBasedRecommender(model, neighborhood, similarity);
              /* System.out.println("recommender"); */

          List<RecommendedItem> recommendations = recommender.recommend(3, 1, true); //10번 유저에게 3개의 추천시스템 
          
          String hobby = "";
          long ItemId = recommendations.get(recommendations.size()-1).getItemID();
          
          if(ItemId == 0){
        	  hobby = "스포츠";
          }else if(ItemId == 1){
        	  hobby = "DIY";
          }else if(ItemId == 2){
        	  hobby = "요리";
          }
          else if(ItemId == 3){
        	  hobby = "언어배우기 ";
          }
          else if(ItemId == 4){
        	  hobby = "사진/영상 ";
          }
          else if(ItemId == 5){
        	  hobby = "미술";
          }
          else if(ItemId == 6){
        	  hobby = "언어배우기";
          }
          else if(ItemId == 7){
        	  hobby = "스포츠";
          }
          else if(ItemId == 8){
        	  hobby = "음악";
          }
          else if(ItemId == 9){
        	  hobby = "DIY";
          }
          else if(ItemId == 10){
        	  hobby = "음악";
          }
          else if(ItemId == 11){
        	  hobby = "DIY";
          }
          
          req.setAttribute("hobby", hobby);
          req.setAttribute("itemId", ItemId);
          /*for (RecommendedItem recommendation : recommendations) {
            System.out.println(recommendation);
            System.out.println(recommendation.getItemID());
            if(recommendation.getItemID() == 0){
                  alert = "당신에게 맞는 취미는 스포츠 입니다.";
              }else if(recommendation.getItemID() == 1){
                  alert = "당신에게 맞는 취미는 DIY입니다.";
              }else if(recommendation.getItemID() == 2){
                  alert = "당신에게 맞는 취미는 요리입니다.";
              }
              else if(recommendation.getItemID() == 3){
                  alert = "당신에게 맞는 취미는 언어배우기 입니다.";
              }
              else if(recommendation.getItemID() == 4){
                  alert = "당신에게 맞는 취미는 사진/영상 입니다.";
              }
              else if(recommendation.getItemID() == 5){
                  alert = "당신에게 맞는 취미는 미술 입니다.";
              }
              else if(recommendation.getItemID() == 6){
                  alert = "당신에게 맞는 취미는 언어배우기 입니다.";
              }
              else if(recommendation.getItemID() == 7){
                  alert = "당신에게 맞는 취미는 스포츠입니다.";
              }
              else if(recommendation.getItemID() == 8){
                  alert = "당신에게 맞는 취미는 음악 입니다.";
              }
              else if(recommendation.getItemID() == 9){
                  alert = "당신에게 맞는 취미는 DIY 입니다.";
              }
              else if(recommendation.getItemID() == 10){
                  alert = "당신에게 맞는 취미는 음악 입니다.";
              }
              else if(recommendation.getItemID() == 11){
                  alert = "당신에게 맞는 취미는 DIY 입니다.";
              }
          } */
          
      } catch (Exception e) {
          e.printStackTrace();
          req.setAttribute("hobby", "ERROR");
          req.setAttribute("itemId", -1);
      }
	
  }

}