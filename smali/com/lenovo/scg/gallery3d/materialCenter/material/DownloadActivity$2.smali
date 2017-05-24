.class Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$2;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->finish()V

    .line 172
    return-void
.end method
