.class Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;
.super Ljava/lang/Object;
.source "IngestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressState"
.end annotation


# instance fields
.field current:I

.field max:I

.field message:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 403
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->title:Ljava/lang/String;

    .line 404
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->message:Ljava/lang/String;

    .line 405
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->current:I

    .line 406
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->max:I

    .line 407
    return-void
.end method
