.class public final Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListTime;
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
    name = "HomeListTime"
.end annotation


# static fields
.field public static final ATTITUDE:Ljava/lang/String; = "count_attitude"

.field public static final COMMENT:Ljava/lang/String; = "count_comment"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/time"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ISRETWEETED:Ljava/lang/String; = "isretweeted"

.field public static final NICKNAME:Ljava/lang/String; = "nick"

.field public static final PIC:Ljava/lang/String; = "pic"

.field public static final PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final REPOST:Ljava/lang/String; = "count_repost"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SUID:Ljava/lang/String; = "status_uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "homelist_time"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final UUID:Ljava/lang/String; = "user_uid"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "homelist_time"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListTime;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
