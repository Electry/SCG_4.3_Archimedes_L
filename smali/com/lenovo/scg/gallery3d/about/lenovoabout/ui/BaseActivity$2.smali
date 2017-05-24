.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->useCustomActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->llBack:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->access$000(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 121
    return-void
.end method
