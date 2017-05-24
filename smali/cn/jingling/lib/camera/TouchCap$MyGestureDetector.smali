.class Lcn/jingling/lib/camera/TouchCap$MyGestureDetector;
.super Ljava/lang/Object;
.source "TouchCap.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/camera/TouchCap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/TouchCap;


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/TouchCap;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcn/jingling/lib/camera/TouchCap$MyGestureDetector;->this$0:Lcn/jingling/lib/camera/TouchCap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    sget-object v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;->MODE_DOUBLETAP:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    iget-object v1, p0, Lcn/jingling/lib/camera/TouchCap$MyGestureDetector;->this$0:Lcn/jingling/lib/camera/TouchCap;

    # getter for: Lcn/jingling/lib/camera/TouchCap;->mMode:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;
    invoke-static {v1}, Lcn/jingling/lib/camera/TouchCap;->access$0(Lcn/jingling/lib/camera/TouchCap;)Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcn/jingling/lib/camera/TouchCap$MyGestureDetector;->this$0:Lcn/jingling/lib/camera/TouchCap;

    # invokes: Lcn/jingling/lib/camera/TouchCap;->takePicture()V
    invoke-static {v0}, Lcn/jingling/lib/camera/TouchCap;->access$1(Lcn/jingling/lib/camera/TouchCap;)V

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    sget-object v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;->MODE_SINGLETAP:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    iget-object v1, p0, Lcn/jingling/lib/camera/TouchCap$MyGestureDetector;->this$0:Lcn/jingling/lib/camera/TouchCap;

    # getter for: Lcn/jingling/lib/camera/TouchCap;->mMode:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;
    invoke-static {v1}, Lcn/jingling/lib/camera/TouchCap;->access$0(Lcn/jingling/lib/camera/TouchCap;)Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcn/jingling/lib/camera/TouchCap$MyGestureDetector;->this$0:Lcn/jingling/lib/camera/TouchCap;

    # invokes: Lcn/jingling/lib/camera/TouchCap;->takePicture()V
    invoke-static {v0}, Lcn/jingling/lib/camera/TouchCap;->access$1(Lcn/jingling/lib/camera/TouchCap;)V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
