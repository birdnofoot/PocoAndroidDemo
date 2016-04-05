package com.demo.pocodemo;

import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;

public class MainActivity extends Activity {

	static {
		System.loadLibrary("stlport_shared");
		System.loadLibrary("PocoFoundation");
		System.loadLibrary("PocoJSON");
		System.loadLibrary("pocoShared");

	}

	private native String stringFromJNI();

	private native String SamplePOCO();
	
	private native void DateTimeSample();
	
	private native void JSONDemo();
	
	private final String sdCardPath = Environment.getExternalStorageDirectory()
			.getAbsolutePath();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
	}
	
	public void StringFromJNI(View view)
	{
		Button btn = (Button) view;
		String stringFromJNI = stringFromJNI();
		Log.d("StringFromJNI",stringFromJNI);
		btn.setText(stringFromJNI);
	}
	
	public void SamplePOCO(View view)
	{
		Button btn = (Button) view;
		String stringFromJNI = SamplePOCO();
		Log.d("StringFromJNI",stringFromJNI);
		btn.setText(stringFromJNI);
		
	}
	
	public void DateTimeSample(View view)
	{
		DateTimeSample();
	}
	
	public void JSONDemo(View view)
	{
		JSONDemo();
	}


	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
}
