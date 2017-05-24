.class public interface abstract Lcom/lenovo/scg/photos/data/PhotoProvider$Photos;
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
    name = "Photos"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field public static final DATE_TAKEN:Ljava/lang/String; = "date_taken"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final MEDIA_SIZE_QUERY_PARAMETER:Ljava/lang/String; = "media_size"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field public static final TABLE:Ljava/lang/String; = "photos"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "photos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
