.class Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;
.super Ljava/lang/Exception;
.source "MtpDeviceIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexingException"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;->this$1:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$1;

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;-><init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;)V

    return-void
.end method
