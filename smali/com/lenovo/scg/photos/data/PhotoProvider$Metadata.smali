.class public interface abstract Lcom/lenovo/scg/photos/data/PhotoProvider$Metadata;
.super Ljava/lang/Object;
.source "PhotoProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/data/PhotoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Metadata"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final KEY_DATE_UPDATED:Ljava/lang/String; = "date_updated"

.field public static final KEY_EXIF_EXPOSURE:Ljava/lang/String; = "ExposureTime"

.field public static final KEY_EXIF_FLASH:Ljava/lang/String; = "Flash"

.field public static final KEY_EXIF_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final KEY_EXIF_FSTOP:Ljava/lang/String; = "FNumber"

.field public static final KEY_EXIF_ISO:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final KEY_EXIF_MAKE:Ljava/lang/String; = "Make"

.field public static final KEY_EXIF_MODEL:Ljava/lang/String; = "Model"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final KEY_PUBLISHED:Ljava/lang/String; = "date_published"

.field public static final KEY_SIZE_IN_BTYES:Ljava/lang/String; = "size"

.field public static final KEY_SUMMARY:Ljava/lang/String; = "summary"

.field public static final PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final TABLE:Ljava/lang/String; = "metadata"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "metadata"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider$Metadata;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
