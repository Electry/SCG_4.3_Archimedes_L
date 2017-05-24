.class Lcom/lenovo/scg/camera/mode/HDRMode$1;
.super Ljava/lang/Object;
.source "HDRMode.java"

# interfaces
.implements Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/HDRMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/HDRMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/HDRMode;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 392
    const-string v0, "HDRMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v0, "HDRMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, mArtHdrParams.length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v0, "HDRMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, mArtHdrParams, tone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v0, "HDRMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, mArtHdrParams, brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v0, "HDRMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, mArtHdrParams, saturation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    aget v1, v1, v4

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    aget v2, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    aget v3, v3, v6

    # invokes: Lcom/lenovo/scg/camera/mode/HDRMode;->setArtHDRParam(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$100(Lcom/lenovo/scg/camera/mode/HDRMode;III)V

    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$200(Lcom/lenovo/scg/camera/mode/HDRMode;)Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$200(Lcom/lenovo/scg/camera/mode/HDRMode;)Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    aget v1, v1, v4

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    aget v2, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode$1;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    # getter for: Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/HDRMode;->access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    aget v3, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->initSeekBar(III)V

    .line 402
    :cond_0
    return-void
.end method
