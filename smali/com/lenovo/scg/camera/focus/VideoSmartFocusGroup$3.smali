.class Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$3;
.super Ljava/lang/Object;
.source "VideoSmartFocusGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->updateFace(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    iput-object p2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$3;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    # getter for: Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->access$100(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    # getter for: Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->access$100(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->updateRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
