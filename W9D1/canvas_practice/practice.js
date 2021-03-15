document.addEventListener("DOMContentLoaded", function(){
  const canvasEl = document.getElementById("mycanvas");
  canvasEl.width = 500;
  canvasEl.height = 500;
  const ctx = canvasEl.getContext("2d");

  ctx.fillStyle = "green";
  ctx.fillRect(0, 0, 500, 300);

  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "blue";
  ctx.fillStyle = "white";
  ctx.lineWidth = 8;
  ctx.stroke();
  ctx.fill();
});
