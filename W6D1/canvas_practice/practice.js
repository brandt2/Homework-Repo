document.addEventListener("DOMContentLoaded", function(){
  const canvasElement = document.getElementById("mycanvas");
  canvasElement.width = 500;
  canvasElement.height = 500;
  const ctx = canvasElement.getContext('2d');

  ctx.fillStyle = "blue";
  ctx.fillRect(0, 0, 500, 500);

  ctx.beginPath();
  ctx.arc(250, 250, 50, 0, 2*Math.PI, true);
  ctx.strokeStyle = "orange";
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = "purple";
  ctx.fill();
});
