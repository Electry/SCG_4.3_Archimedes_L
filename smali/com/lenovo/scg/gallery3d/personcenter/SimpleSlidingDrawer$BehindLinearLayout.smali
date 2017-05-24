.class Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SimpleSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BehindLinearLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .line 729
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 730
    return-void
.end method


# virtual methods
.method public fitDisplay(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 738
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$1500(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;->setPadding(IIII)V

    .line 739
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;->requestLayout()V

    .line 740
    return-void
.end method
