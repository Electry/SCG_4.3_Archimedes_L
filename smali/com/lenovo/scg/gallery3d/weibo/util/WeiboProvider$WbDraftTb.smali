.class public final Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;
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
    name = "WbDraftTb"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/draft"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DRAFTTIME:Ljava/lang/String; = "draft_time"

.field public static final NICKNAME:Ljava/lang/String; = "nick"

.field public static final PICURL:Ljava/lang/String; = "pic_url"

.field public static final POSLAT:Ljava/lang/String; = "pic_lat"

.field public static final POSLONG:Ljava/lang/String; = "pic_long"

.field public static final SHARETYPE:Ljava/lang/String; = "share_type"

.field public static final SUID:Ljava/lang/String; = "status_uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "wb_draft"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wb_draft"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
