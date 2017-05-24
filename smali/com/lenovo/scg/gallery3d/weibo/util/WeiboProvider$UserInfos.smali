.class public final Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$UserInfos;
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
    name = "UserInfos"
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/userinfo"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final EXPIRE_TIME:Ljava/lang/String; = "expire_time"

.field public static final FOLLOWERS:Ljava/lang/String; = "followers"

.field public static final FRIENDS:Ljava/lang/String; = "reposts"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NICKNAME:Ljava/lang/String; = "nick"

.field public static final PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final STATUSES:Ljava/lang/String; = "statuses"

.field public static final TABLE_NAME:Ljava/lang/String; = "user_info"

.field public static final UUID:Ljava/lang/String; = "user_uid"

.field public static final VERIFIED:Ljava/lang/String; = "verified"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "user_info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$UserInfos;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
