.class public Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine$DownloadUtil;
.super Ljava/lang/Object;
.source "LoaderEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadUtil"
.end annotation


# static fields
.field public static final K_CLOUD_DOWNLOAD_CURRENT:Ljava/lang/String; = "Cloud download int current key"

.field public static final K_CLOUD_DOWNLOAD_LIST:Ljava/lang/String; = "Cloud download parcelable cloudphoto list key"

.field public static final K_CLOUD_DOWNLOAD_MAX_PROGRESS:Ljava/lang/String; = "Cloud download long max progress key"

.field public static final K_CLOUD_DOWNLOAD_MAX_SIZE:Ljava/lang/String; = "Cloud download long max size key"

.field public static final K_CLOUD_DOWNLOAD_PHOTO:Ljava/lang/String; = "Cloud download parcelable cloudphoto key"

.field public static final K_CLOUD_DOWNLOAD_PROGRESS:Ljava/lang/String; = "Cloud download long progress key"

.field public static final K_CLOUD_DOWNLOAD_SIZE:Ljava/lang/String; = "Cloud download long size key"

.field public static final K_CLOUD_DOWNLOAD_TOTAL:Ljava/lang/String; = "Cloud download int total key"


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine$DownloadUtil;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
