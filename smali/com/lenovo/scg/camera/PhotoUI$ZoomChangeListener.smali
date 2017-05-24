.class Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoUI;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/PhotoUI;Lcom/lenovo/scg/camera/PhotoUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/PhotoUI$1;

    .prologue
    .line 1355
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;-><init>(Lcom/lenovo/scg/camera/PhotoUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$500(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/PhotoController;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->onZoomEnd()V

    .line 1384
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$1100(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$1100(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$1200(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->destoryTimerStart()V

    .line 1388
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$500(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/PhotoController;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->onZoomStart()V

    .line 1371
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$1100(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v0, v1, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$1100(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$900(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$900(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoUI;->access$1200(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 1377
    :cond_1
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoUI;->access$500(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/PhotoController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lenovo/scg/camera/PhotoController;->onZoomChanged(I)I

    move-result v0

    .line 1360
    .local v0, "newZoom":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoUI;->access$900(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoUI;->access$900(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    move-result-object v2

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mZoomRatios:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoUI;->access$1000(Lcom/lenovo/scg/camera/PhotoUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 1364
    :cond_0
    return-void
.end method
