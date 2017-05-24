.class public Lcn/jingling/lib/filters/realsize/RSEmptyFilter;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSEmptyFilter.java"


# static fields
.field public static EmptyFilterLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "rsoriginal"

    sput-object v0, Lcn/jingling/lib/filters/realsize/RSEmptyFilter;->EmptyFilterLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcn/jingling/lib/filters/realsize/RSLineFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyLine(Landroid/content/Context;[III)V
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "pixels"    # [I
    .param p3, "line"    # I
    .param p4, "height"    # I

    .prologue
    .line 13
    return-void
.end method

.method protected releaseLayers()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
