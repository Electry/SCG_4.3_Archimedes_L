.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$6;
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
    .line 482
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mCmccPromptHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;

    const-string v1, "cmcc_prompt_website"

    new-instance v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$6$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$6$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->prompt(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method
