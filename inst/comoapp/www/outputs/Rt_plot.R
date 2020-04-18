output$Rt_plot <- renderHighchart({
  req(simul_interventions$interventions_available)

  
  dta <- data.frame(Rt = simul_interventions$results$Rt,
                          time = simul_baseline$results$time)
  
  return(
    hchart(dta, "line", name = "Rt", hcaes(x = time, y = Rt))
  )
  
  # time_ <- simul_interventions$results$time
  # Rt_ <- simul_interventions$results$Rt
  # 
  #   plot(time_[2:length(time_)],Rt_,type='l',lwd=3,col='black',
  #        main="Reproduction number, Rt", xlab="Time", ylab="Rt")
})