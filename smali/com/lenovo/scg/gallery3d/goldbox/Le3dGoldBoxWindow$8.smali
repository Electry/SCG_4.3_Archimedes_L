.class Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8;
.super Ljava/lang/Object;
.source "Le3dGoldBoxWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->initGrid()V
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
    .line 471
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 5
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 490
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    # invokes: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v2, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$100(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    new-instance v2, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8$1;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8;)V

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startActivityAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 498
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_gold_box_view"

    const-string v2, "action_gold_box_view_click_videoedit"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 501
    return-void
.end method

.method public onPressDown(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 2
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 483
    move-object v0, p1

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, -0xfe6c31

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBgColor(I)V

    .line 484
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dView;->requestRender()V

    .line 485
    return-void
.end method

.method public onPressUp(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 5
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    const/4 v4, 0x6

    .line 476
    move-object v0, p1

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v2, 0x7f0208e6

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v3, v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->icon_drawable:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dView;->requestRender()V

    .line 478
    return-void
.end method
