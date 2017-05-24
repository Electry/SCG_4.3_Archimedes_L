.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper$1;
.super Ljava/lang/Object;
.source "TwoAppCheckUpdateUIHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->displayList(I)V

    .line 50
    return-void
.end method
