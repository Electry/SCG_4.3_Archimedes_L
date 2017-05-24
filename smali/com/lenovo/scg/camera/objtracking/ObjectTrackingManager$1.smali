.class Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;
.super Ljava/lang/Object;
.source "ObjectTrackingManager.java"

# interfaces
.implements Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IILjava/lang/Object;I)I
    .locals 9
    .param p1, "nMsgType"    # I
    .param p2, "nMsgTime"    # I
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "nUserData"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x2

    .line 125
    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OT entering onCallback "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p3, :cond_1

    const-string v3, " null"

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v6, "OT entering onCallback continue"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsFaceClicked:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$200(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 130
    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Should not call OT if not face clicked!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_1
    return v5

    .line 125
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v0, p3

    .line 134
    check-cast v0, Landroid/graphics/Rect;

    .line 135
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-gt v3, v8, :cond_6

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-gt v3, v8, :cond_6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gt v3, v8, :cond_6

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v8, :cond_6

    .line 137
    :cond_3
    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not valid object. Rect == null "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;
    invoke-static {v3}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$900(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 139
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;
    invoke-static {v3}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$900(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;->onFaceDispear(Z)V

    .line 141
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$1002(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_1

    :cond_5
    move v3, v5

    .line 137
    goto :goto_2

    .line 142
    :cond_6
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;
    invoke-static {v3}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$900(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # invokes: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->rectConvertToScreen(Landroid/graphics/Rect;)V
    invoke-static {v3, v0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$1100(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Landroid/graphics/Rect;)V

    .line 144
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;
    invoke-static {v3}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$900(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;->onFaceDetected(Landroid/graphics/Rect;)V

    .line 146
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # invokes: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->needReFocus(Landroid/graphics/Rect;)Z
    invoke-static {v3, v0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$1200(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 147
    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Trigger video face tracking re-focus..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 149
    .local v1, "x":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 150
    .local v2, "y":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;
    invoke-static {v3}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$900(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;->onFaceMoveReFocus(II)V

    .line 152
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;->this$0:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$1000(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onCallback onceAutoFocus done"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_7
    # getter for: Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Update face rect done"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
