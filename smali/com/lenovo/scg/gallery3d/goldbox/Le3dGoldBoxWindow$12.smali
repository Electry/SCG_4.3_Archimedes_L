.class Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$12;
.super Ljava/lang/Object;
.source "Le3dGoldBoxWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startActivityAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V
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
    .line 827
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$12;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 4

    .prologue
    .line 832
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$12;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$1200(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 833
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$12;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$1300(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 834
    .local v1, "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getID()I

    move-result v2

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getID()I

    move-result v2

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_0

    .line 835
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setVisible(Z)V

    .line 832
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    .end local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$12;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$1400(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->requestRender()V

    .line 839
    return-void
.end method
