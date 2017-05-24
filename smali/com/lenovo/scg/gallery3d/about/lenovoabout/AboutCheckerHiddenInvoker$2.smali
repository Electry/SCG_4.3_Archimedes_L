.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker$2;
.super Ljava/lang/Object;
.source "AboutCheckerHiddenInvoker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->isValidClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;

    iget v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mCopyRightClicked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mCopyRightClicked:I

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;

    # invokes: Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->invokeCheckerWhenGestureRight()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->access$000(Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;

    const/4 v1, 0x1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mCopyRightClicked:I

    goto :goto_0
.end method
