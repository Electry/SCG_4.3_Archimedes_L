.class public Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine$UploadUtil;
.super Ljava/lang/Object;
.source "LoaderEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadUtil"
.end annotation


# static fields
.field public static final K_CLOUD_UPLOAD_CURRENT:Ljava/lang/String; = "Cloud upload int current key"

.field public static final K_CLOUD_UPLOAD_MAX_PROGRESS:Ljava/lang/String; = "Cloud upload long max progress key"

.field public static final K_CLOUD_UPLOAD_MAX_SIZE:Ljava/lang/String; = "Cloud upload long max size key"

.field public static final K_CLOUD_UPLOAD_PHOTO:Ljava/lang/String; = "Cloud upload parcelable cloudphoto key"

.field public static final K_CLOUD_UPLOAD_PROGRESS:Ljava/lang/String; = "Cloud upload long progress key"

.field public static final K_CLOUD_UPLOAD_SIZE:Ljava/lang/String; = "Cloud upload long size key"

.field public static final K_CLOUD_UPLOAD_TOTAL:Ljava/lang/String; = "Cloud upload int total key"

.field public static final K_CLOUD_UPLOAD_TYPE:Ljava/lang/String; = "Cloud upload error type key"


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine$UploadUtil;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
