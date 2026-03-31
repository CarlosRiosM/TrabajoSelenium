package com.demo.project;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(
        features = "classpath:com/demo/project/Post.feature" // Specify the path to your feature files
)
public class TestRunner {
}
