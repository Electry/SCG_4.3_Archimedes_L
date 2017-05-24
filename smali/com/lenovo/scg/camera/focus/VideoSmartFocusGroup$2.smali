.class Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$2;
.super Ljava/lang/Object;
.source "VideoSmartFocusGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->initFaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    # getter for: Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->access$100(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    new-instance v1, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    iget-object v3, v3, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;-><init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;Landroid/content/Context;)V

    # setter for: Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->access$102(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;)Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    .line 257
    const-string v0, "VideoSmartFocusGroup"

    const-string v1, "New mFaceView done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    return-void
.end method
