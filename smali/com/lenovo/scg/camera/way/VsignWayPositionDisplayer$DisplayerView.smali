.class Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;
.super Landroid/view/View;
.source "VsignWayPositionDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayerView"
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    .line 267
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->mPaint:Landroid/graphics/Paint;

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->setWillNotDraw(Z)V

    .line 270
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    # getter for: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$400(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->mPaint:Landroid/graphics/Paint;

    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    # getter for: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$400(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 287
    :cond_1
    return-void
.end method
