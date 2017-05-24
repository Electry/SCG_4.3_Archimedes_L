.class Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;
.super Ljava/lang/Object;
.source "PhotoStorageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoCloudCount"
.end annotation


# instance fields
.field albumCount:I

.field lastModify:J

.field photoCount:I

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl$PhotoCloudCount;->this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
