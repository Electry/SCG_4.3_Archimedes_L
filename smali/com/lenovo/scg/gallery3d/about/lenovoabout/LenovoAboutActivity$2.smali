.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;
.super Ljava/lang/Object;
.source "LenovoAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getWeiboUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mCmccPromptHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;

    const-string v1, "cmcc_prompt_weibo"

    new-instance v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->prompt(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
