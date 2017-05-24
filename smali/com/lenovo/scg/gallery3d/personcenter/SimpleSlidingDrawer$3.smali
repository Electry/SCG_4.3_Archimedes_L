.class Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$3;
.super Ljava/lang/Object;
.source "SimpleSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;-><init>(Landroid/app/Activity;Landroid/view/animation/Interpolator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$3;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 315
    const-string v0, "SimpleSlidingDrawer"

    const-string v1, "mOverlay onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$3;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$1300(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$3;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->closeLeftSide()V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$3;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$1400(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$3;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->closeRightSide()V

    goto :goto_0
.end method
