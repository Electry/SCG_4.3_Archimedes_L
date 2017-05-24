.class Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;
.super Ljava/lang/Thread;
.source "ObjectTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessFDThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;-><init>(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDataForFD:[B
    invoke-static {v1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$000(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)[B

    move-result-object v1

    # invokes: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->processFaceDetection([B)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$100(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;[B)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # invokes: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->isClickOnFace()Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$300(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Z

    move-result v1

    # setter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsFaceClicked:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$202(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Z)Z

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsFaceClicked:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$200(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickedFaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$400(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Is face clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickedFaceRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$400(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Landroid/graphics/Rect;

    move-result-object v1

    # invokes: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->setObjectTrackingPara(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$600(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Landroid/graphics/Rect;)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDataForFD:[B
    invoke-static {v1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$000(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)[B

    move-result-object v1

    # invokes: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->processOT([B)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$700(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;[B)V

    .line 81
    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessFDThread done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # setter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDataForFD:[B
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$002(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;[B)[B

    .line 92
    return-void

    .line 83
    :cond_1
    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not face clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # invokes: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->removeOTPreviewCallback()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$800(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;
    invoke-static {v0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$900(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;
    invoke-static {v0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$900(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;->onFaceDetected(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
