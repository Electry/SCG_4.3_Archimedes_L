.class public final Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$CacheFiles;
.super Ljava/lang/Object;
.source "WeiboProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheFiles"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/cache"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final FILENAME_INDEX:I = 0x2

.field public static final LASTACCESSTIME:Ljava/lang/String; = "lastaccesstime"

.field public static final LASTACCESSTIME_INDEX:I = 0x3

.field public static final POSTDATA:Ljava/lang/String; = "postdata"

.field public static final POSTDATA_INDEX:I = 0x1

.field public static final RESERVED:Ljava/lang/String; = "reserved"

.field public static final RESERVED_INDEX:I = 0x4

.field public static final TABLE_NAME:Ljava/lang/String; = "imagecache"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final URL_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "imagecache"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$CacheFiles;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
