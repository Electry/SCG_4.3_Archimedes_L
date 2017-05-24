.class Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView$1;
.super Ljava/lang/Object;
.source "CloudGuideMainView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mWelcome:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->access$000(Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->mIsFirstInitShowUserGuide:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->access$100(Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->setResult(ILandroid/content/Intent;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView$1;->this$0:Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;->finish()V

    .line 46
    :cond_1
    return-void
.end method
