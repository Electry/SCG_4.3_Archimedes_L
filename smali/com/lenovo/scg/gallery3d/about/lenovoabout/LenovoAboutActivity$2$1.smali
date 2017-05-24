.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2$1;
.super Ljava/lang/Object;
.source "LenovoAboutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mIntentHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/IntentHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getWeiboUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/IntentHelper;->openUrl(Ljava/lang/String;)V

    .line 446
    return-void
.end method
