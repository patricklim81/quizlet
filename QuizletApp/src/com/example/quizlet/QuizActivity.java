package com.example.quizlet;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class QuizActivity extends Activity {
	
	private Button mTrueButton;
	private Button mFalseButton;
	private Button mNextButton;
	private TextView mQuestionTextView;
	
	private TrueFalse[] mQuestionBank = new TrueFalse[]{
			new TrueFalse(R.string.question_one, true),
			new TrueFalse(R.string.question_two, true),
			new TrueFalse(R.string.question_three, false),
			new TrueFalse(R.string.question_four, true),
			new TrueFalse(R.string.question_five, true),
	};
	
	private int mCurrentIndex = 0;

	private void updateQuestion(){
		int question=mQuestionBank[mCurrentIndex].getQuestion();
		mQuestionTextView.setText(question);
	}
	
	private void checkAnswer (boolean userPressedTrue) {
		boolean answerIsTrue=mQuestionBank[mCurrentIndex].isTrueQuestion();
		
		int messageResId = 0;
		
		if (userPressedTrue==answerIsTrue){
			messageResId=R.string.correct_toast;
		}else{
			messageResId=R.string.incorrect_toast;
		}
		Toast.makeText(this,messageResId,Toast.LENGTH_SHORT)
		.show();
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_quiz);
		
		mQuestionTextView = (TextView)findViewById(R.id.question_text_view);
		mQuestionTextView.setOnClickListener(new View.OnClickListener(){
			@Override
			public void onClick(View v) {
				
			}
		});
		
		
		mTrueButton = (Button)findViewById(R.id.True_button);
		mTrueButton.setOnClickListener(new View.OnClickListener(){
			@Override
			public void onClick(View v){
				checkAnswer(true);
				
			}
		});
		mFalseButton = (Button)findViewById(R.id.false_button);
		mFalseButton.setOnClickListener(new View.OnClickListener(){
			@Override
			public void onClick(View v) {
				checkAnswer(false);
				
			}
		});
		mNextButton=(Button)findViewById(R.id.next_button);
		mNextButton.setOnClickListener(new View.OnClickListener(){
			@Override
			public void onClick(View v){
				mCurrentIndex=(mCurrentIndex + 1)%mQuestionBank.length;
				updateQuestion();
			}
		});
		
		
		
		updateQuestion();
	}



	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_quiz, menu);
		return true;
	}

}