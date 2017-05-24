.class public final Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;
.super Ljava/lang/Object;
.source "Download_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "View_Holder"
.end annotation


# instance fields
.field download_local_img_bottom:Landroid/widget/ImageButton;

.field download_local_topimg:Landroid/widget/Button;

.field img_select:Z

.field isDel:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V
    .locals 1

    .prologue
    .line 304
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->isDel:Z

    return-void
.end method
