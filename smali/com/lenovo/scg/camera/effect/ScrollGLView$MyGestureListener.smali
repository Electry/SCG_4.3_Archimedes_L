.class Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollGLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/effect/ScrollGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/ScrollGLView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/effect/ScrollGLView;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/effect/ScrollGLView;Lcom/lenovo/scg/camera/effect/ScrollGLView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/effect/ScrollGLView;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/effect/ScrollGLView$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/effect/ScrollGLView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    .line 178
    const-string/jumbo v0, "wwf"

    const-string v1, "ScrollGLView onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    # getter for: Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->access$200(Lcom/lenovo/scg/camera/effect/ScrollGLView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-result-object v0

    float-to-int v1, p3

    const/16 v2, -0x604

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->fling(III)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->invalidate()V

    .line 181
    return v3
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 167
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    # invokes: Lcom/lenovo/scg/camera/effect/ScrollGLView;->dispatchEventToChilden(Landroid/view/MotionEvent;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->access$100(Lcom/lenovo/scg/camera/effect/ScrollGLView;Landroid/view/MotionEvent;)V

    .line 170
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    # getter for: Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->access$200(Lcom/lenovo/scg/camera/effect/ScrollGLView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-result-object v1

    neg-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v3, -0x604

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    .line 171
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->invalidate()V

    .line 172
    const-string/jumbo v1, "wwf"

    const-string v2, "ScrollGLView onScroll"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v4
.end method
