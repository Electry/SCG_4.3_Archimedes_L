.class Lcn/jingling/lib/livefilter/LiveLayer$1;
.super Ljava/util/HashMap;
.source "LiveLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/livefilter/LiveLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcn/jingling/lib/livefilter/LiveLayer$Type;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ca2fe35851c8bf2L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 31
    sget-object v0, Lcn/jingling/lib/livefilter/LiveLayer$Type;->LINEAR_BURN:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const-string v1, "linearburn_fragment_shader"

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/livefilter/LiveLayer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcn/jingling/lib/livefilter/LiveLayer$Type;->MULTIPLY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const-string/jumbo v1, "multiply_fragment_shader"

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/livefilter/LiveLayer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const-string/jumbo v1, "overlay_fragment_shader"

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/livefilter/LiveLayer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcn/jingling/lib/livefilter/LiveLayer$Type;->SCREEN:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const-string/jumbo v1, "screen_fragment_shader"

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/livefilter/LiveLayer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcn/jingling/lib/livefilter/LiveLayer$Type;->DARKEN:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const-string v1, "darken_fragment_shader"

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/livefilter/LiveLayer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcn/jingling/lib/livefilter/LiveLayer$Type;->COVERAGE:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const-string v1, "coverage_fragment_shader"

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/livefilter/LiveLayer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcn/jingling/lib/livefilter/LiveLayer$Type;->SOFTLIGHT:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const-string/jumbo v1, "softlight_fragment_shader"

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/livefilter/LiveLayer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
