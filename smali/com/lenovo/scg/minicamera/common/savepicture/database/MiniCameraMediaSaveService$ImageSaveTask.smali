.class Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MiniCameraMediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[B

.field private date:J

.field private exif:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

.field private height:I

.field private listener:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;

.field private loc:Landroid/location/Location;

.field private orientation:I

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;[BLjava/lang/String;JLandroid/location/Location;IIILcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;Landroid/content/ContentResolver;Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I
    .param p10, "exif"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;
    .param p11, "resolver"    # Landroid/content/ContentResolver;
    .param p12, "listener"    # Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->this$0:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->data:[B

    .line 157
    iput-object p3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->title:Ljava/lang/String;

    .line 158
    iput-wide p4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->date:J

    .line 159
    iput-object p6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->loc:Landroid/location/Location;

    .line 160
    iput p7, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->width:I

    .line 161
    iput p8, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->height:I

    .line 162
    iput p9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->orientation:I

    .line 163
    iput-object p10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->exif:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    .line 164
    iput-object p11, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 165
    iput-object p12, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->listener:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;

    .line 166
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 10
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->date:J

    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->loc:Landroid/location/Location;

    iget v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->orientation:I

    iget-object v6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->exif:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    iget-object v7, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->data:[B

    iget v8, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->width:I

    iget v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->height:I

    invoke-static/range {v0 .. v9}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraStorage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;[BII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 134
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->listener:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->listener:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->this$0:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

    # operator-- for: Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mTaskNumber:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->access$010(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;)I

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->this$0:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

    # getter for: Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mTaskNumber:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->access$000(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->this$0:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

    # invokes: Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->onQueueAvailable()V
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->access$100(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;)V

    .line 183
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 134
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
