.class public interface abstract Lcom/lenovo/scg/photos/data/PhotoProvider$Albums;
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
    name = "Albums"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ALBUM_TYPE:Ljava/lang/String; = "album_type"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field public static final DATE_PUBLISHED:Ljava/lang/String; = "date_published"

.field public static final LOCATION_STRING:Ljava/lang/String; = "location_string"

.field public static final PARENT_ID:Ljava/lang/String; = "parent_id"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TABLE:Ljava/lang/String; = "albums"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_PRIVATE:I = 0x1

.field public static final VISIBILITY_PUBLIC:I = 0x3

.field public static final VISIBILITY_SHARED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "albums"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
