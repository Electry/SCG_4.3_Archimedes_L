.class Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$LocalBinder;
.super Landroid/os/Binder;
.source "MiniCameraMediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$LocalBinder;->this$0:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$LocalBinder;->this$0:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

    return-object v0
.end method
