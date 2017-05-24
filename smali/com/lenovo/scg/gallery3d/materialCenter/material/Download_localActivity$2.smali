.class Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$2;
.super Ljava/lang/Object;
.source "Download_localActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->finish()V

    .line 134
    return-void
.end method
