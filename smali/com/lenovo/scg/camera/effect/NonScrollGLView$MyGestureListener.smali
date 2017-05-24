.class Lcom/lenovo/scg/camera/effect/NonScrollGLView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NonScrollGLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/effect/NonScrollGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/NonScrollGLView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/effect/NonScrollGLView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/NonScrollGLView$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/effect/NonScrollGLView;Lcom/lenovo/scg/camera/effect/NonScrollGLView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/effect/NonScrollGLView;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/effect/NonScrollGLView$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/NonScrollGLView$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/effect/NonScrollGLView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "onSingleTapUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x1

    return v0
.end method
