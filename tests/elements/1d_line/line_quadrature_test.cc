// Line quadrature test
#include <cmath>

#include <limits>

#include "catch.hpp"
#include "line_quadrature.h"

//! \brief Check LineQuadrature class
TEST_CASE("Line quadratures are checked",
          "[linequadrature][line][quadrature][1D]") {
  const unsigned Dim = 1;
  const double Tolerance = 1.E-7;

  //! Check for a single point quadrature function
  SECTION("Line with a single quadrature") {
    const unsigned Nquadratures = 1;

    auto quad = std::make_shared<felib::LineQuadrature<Dim, Nquadratures>>();

    // Che quadratures
    auto points = quad->quadratures();

    // Check size
    REQUIRE(points.rows() == 1);
    REQUIRE(points.cols() == 1);

    // Check quadrature points
    REQUIRE(points(0, 0) == Approx(0.).epsilon(Tolerance));

    // Check weights
    auto weights = quad->weights();

    // Check size
    REQUIRE(weights.size() == 1);

    // Check weights
    REQUIRE(weights.at(0) == Approx(2.0).epsilon(Tolerance));
  }

  //! Check for two points quadrature function
  SECTION("Line with two points quadrature") {
    const unsigned Nquadratures = 2;

    auto quad = std::make_shared<felib::LineQuadrature<Dim, Nquadratures>>();

    // Che quadratures
    auto points = quad->quadratures();

    // Check size
    REQUIRE(points.rows() == 2);
    REQUIRE(points.cols() == 1);

    // Check quadrature points
    REQUIRE(points(0, 0) == Approx(-1./std::sqrt(3.)).epsilon(Tolerance));
    REQUIRE(points(1, 0) == Approx(+1./std::sqrt(3.)).epsilon(Tolerance));

    // Check weights
    auto weights = quad->weights();

    // Check size
    REQUIRE(weights.size() == 2);

    // Check weights
    REQUIRE(weights.at(0) == Approx(1.0).epsilon(Tolerance));
    REQUIRE(weights.at(1) == Approx(1.0).epsilon(Tolerance));
  }

  //! Check for three points quadrature function
  SECTION("Line with three points quadrature") {
    const unsigned Nquadratures = 3;

    auto quad = std::make_shared<felib::LineQuadrature<Dim, Nquadratures>>();

    // Che quadratures
    auto points = quad->quadratures();

    // Check size
    REQUIRE(points.rows() == 3);
    REQUIRE(points.cols() == 1);

    // Check quadrature points
    REQUIRE(points(0, 0) == Approx(-1.*std::sqrt(3./5.)).epsilon(Tolerance));
    REQUIRE(points(1, 0) == Approx(0.).epsilon(Tolerance));
    REQUIRE(points(2, 0) == Approx(std::sqrt(3./5.)).epsilon(Tolerance));

    // Check weights
    auto weights = quad->weights();

    // Check size
    REQUIRE(weights.size() == 3);

    // Check weights
    REQUIRE(weights.at(0) == Approx(5./9.).epsilon(Tolerance));
    REQUIRE(weights.at(1) == Approx(8./9.).epsilon(Tolerance));
    REQUIRE(weights.at(2) == Approx(5./9.).epsilon(Tolerance));
  }
}
