.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 111
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->onBackPressed()V

    .line 115
    return-void
.end method
