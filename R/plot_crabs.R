crabs_grouped <- crabs %>% 
  + group_by(sex, color) %>% 
  + summarize(mean_body_depth = mean(body_depth))
ggplot(crabs_grouped, aes(x = sex, y = mean_body_depth, color = color)) + geom_point() + geom_path(aes(group = color)) + scale_color_manual(values = c("blue","orange"))
model_fit <- lm(body_depth ~ sex * color, data = crabs)
augmented_fit <- augment(model_fit)
augmented_fit
qqnorm(augmented_fit$.resid)
qqline(augmented_fit$.resid)
qqline(augmented_fit$.resid, col = "red")
git config --global user.email "you@example.com"
git config --global user.name "Your Name"