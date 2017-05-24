.class Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;
.super Landroid/view/View;
.source "MiniCameraSurfaceViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderView"
.end annotation


# instance fields
.field private mTouchTarget:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

.field final synthetic this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    .line 103
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->setWillNotDraw(Z)V

    .line 105
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 139
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mClients:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->access$200(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v1, 0x0

    .line 141
    .local v1, "redraw":Z
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mClients:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->access$200(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    .line 142
    .local v2, "renderer":Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;
    invoke-interface {v2, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;->draw(Landroid/graphics/Canvas;)V

    .line 143
    if-nez v1, :cond_2

    check-cast v2, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;

    .end local v2    # "renderer":Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;
    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 144
    :goto_2
    goto :goto_1

    .line 143
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 145
    :cond_4
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->invalidate()V

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 128
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    # invokes: Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->adjustPosition()V
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->access$100(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)V

    .line 129
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 130
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mClients:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->access$200(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 134
    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mClients:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->access$200(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    .line 132
    .local v1, "renderer":Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;->layout(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->mTouchTarget:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->mTouchTarget:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    invoke-interface {v3, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 123
    :cond_0
    :goto_0
    return v2

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mTouchClients:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->access$000(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "res":Z
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mTouchClients:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->access$000(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    .line 119
    .local v0, "client":Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;
    invoke-interface {v0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 120
    goto :goto_1

    .line 123
    .end local v0    # "client":Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTouchTarget(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;)V
    .locals 0
    .param p1, "target"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->mTouchTarget:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    .line 109
    return-void
.end method
