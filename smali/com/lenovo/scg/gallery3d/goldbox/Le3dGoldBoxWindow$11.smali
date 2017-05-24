.class Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$11;
.super Ljava/lang/Object;
.source "Le3dGoldBoxWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$11;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    .prologue
    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$11;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$800(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$11;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$900(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setVisible(Z)V

    .line 736
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$11;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$1000(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->requestRender()V

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$11;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # invokes: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getControllerProxy()Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$1100(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->exit()V

    .line 740
    return-void
.end method
