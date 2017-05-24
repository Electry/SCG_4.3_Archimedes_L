.class Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;
.super Ljava/lang/Object;
.source "WaterPanelSmile.java"

# interfaces
.implements Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/water/WaterPanelSmile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/water/WaterPanelSmile;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmile(I[I)V
    .locals 6
    .param p1, "faceNum"    # I
    .param p2, "level"    # [I

    .prologue
    const/4 v5, 0x0

    .line 199
    const/4 v0, -0x1

    .line 201
    .local v0, "resId":I
    const-string v2, "WaterPanelSmile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSmile, faceNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-nez p2, :cond_2

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    # setter for: Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->access$002(Lcom/lenovo/scg/camera/water/WaterPanelSmile;I)I

    .line 205
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    # getter for: Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->access$000(Lcom/lenovo/scg/camera/water/WaterPanelSmile;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    # getter for: Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->access$100(Lcom/lenovo/scg/camera/water/WaterPanelSmile;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 206
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    # getter for: Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->access$000(Lcom/lenovo/scg/camera/water/WaterPanelSmile;)I

    move-result v3

    # setter for: Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->access$102(Lcom/lenovo/scg/camera/water/WaterPanelSmile;I)I

    .line 207
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    # invokes: Lcom/lenovo/scg/camera/water/WaterPanelSmile;->removeViewToParent()V
    invoke-static {v2}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->access$200(Lcom/lenovo/scg/camera/water/WaterPanelSmile;)V

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->onCaptureStartHint()I

    move-result v0

    .line 210
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    # invokes: Lcom/lenovo/scg/camera/water/WaterPanelSmile;->addViewToParent(I)V
    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->access$300(Lcom/lenovo/scg/camera/water/WaterPanelSmile;I)V

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_2
    aget v1, p2, v5

    .line 215
    .local v1, "smile":I
    const-string v2, "WaterPanelSmile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSmile, level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    invoke-virtual {v2, v1, v5}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->loadImage(II)I

    move-result v0

    .line 217
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    # invokes: Lcom/lenovo/scg/camera/water/WaterPanelSmile;->addViewToParent(I)V
    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->access$300(Lcom/lenovo/scg/camera/water/WaterPanelSmile;I)V

    .line 218
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    # invokes: Lcom/lenovo/scg/camera/water/WaterPanelSmile;->loadRate(I)V
    invoke-static {v2, v1}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->access$400(Lcom/lenovo/scg/camera/water/WaterPanelSmile;I)V

    goto :goto_0
.end method
