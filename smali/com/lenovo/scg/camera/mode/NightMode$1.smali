.class Lcom/lenovo/scg/camera/mode/NightMode$1;
.super Ljava/lang/Object;
.source "NightMode.java"

# interfaces
.implements Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/NightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/NightMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/NightMode;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(I)V
    .locals 11
    .param p1, "index"    # I

    .prologue
    .line 454
    const-string v0, "SuperNightMode"

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

    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v4

    aget-object v4, v4, p1

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v5}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v5

    aget-object v5, v5, p1

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v6

    aget-object v6, v6, p1

    const/4 v7, 0x5

    aget v6, v6, v7

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v7}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v7

    aget-object v7, v7, p1

    const/4 v8, 0x6

    aget v7, v7, v8

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->ISOParams:[Ljava/lang/String;
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/NightMode;->access$100(Lcom/lenovo/scg/camera/mode/NightMode;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, p1

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->ShutterParams:[Ljava/lang/String;
    invoke-static {v9}, Lcom/lenovo/scg/camera/mode/NightMode;->access$200(Lcom/lenovo/scg/camera/mode/NightMode;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/lenovo/scg/camera/mode/NightMode;->setTakePicParam(IIIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/NightMode;->access$300(Lcom/lenovo/scg/camera/mode/NightMode;)Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/NightMode;->access$300(Lcom/lenovo/scg/camera/mode/NightMode;)Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v4

    aget-object v4, v4, p1

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v5}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v5

    aget-object v5, v5, p1

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v6

    aget-object v6, v6, p1

    const/4 v7, 0x5

    aget v6, v6, v7

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I
    invoke-static {v7}, Lcom/lenovo/scg/camera/mode/NightMode;->access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I

    move-result-object v7

    aget-object v7, v7, p1

    const/4 v8, 0x6

    aget v7, v7, v8

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->ISOParams:[Ljava/lang/String;
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/NightMode;->access$100(Lcom/lenovo/scg/camera/mode/NightMode;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, p1

    const/4 v9, 0x2

    const/16 v10, 0x32

    invoke-virtual/range {v0 .. v10}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->setSeekBar(IIIIIIILjava/lang/String;II)V

    .line 463
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # invokes: Lcom/lenovo/scg/camera/mode/NightMode;->openFM()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/NightMode;->access$400(Lcom/lenovo/scg/camera/mode/NightMode;)V

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # setter for: Lcom/lenovo/scg/camera/mode/NightMode;->mSceneIndex:I
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/mode/NightMode;->access$602(Lcom/lenovo/scg/camera/mode/NightMode;I)I

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # getter for: Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/NightMode;->access$700(Lcom/lenovo/scg/camera/mode/NightMode;)Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    iget-object v1, v1, Lcom/lenovo/scg/camera/mode/NightMode;->mFlashStatusSave:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/NightMode;->needFlash()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->updateNightFlash(Ljava/lang/String;Z)V

    .line 471
    return-void

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode$1;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    # invokes: Lcom/lenovo/scg/camera/mode/NightMode;->restoreFM()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/NightMode;->access$500(Lcom/lenovo/scg/camera/mode/NightMode;)V

    goto :goto_0
.end method
