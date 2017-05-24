.class Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$5;
.super Ljava/lang/Object;
.source "Download_Adapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->confirmDel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->dismissDialog()Z

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->del_material_loacal()V

    .line 191
    return-void
.end method
