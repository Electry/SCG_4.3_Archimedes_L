.class Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$4;
.super Ljava/lang/Object;
.source "VideoSmartFocusGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->hideFaceView()V
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
    .line 288
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$4;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$4;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    # getter for: Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->access$100(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$4;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    # getter for: Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->access$100(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->clear()V

    .line 296
    :cond_0
    return-void
.end method
