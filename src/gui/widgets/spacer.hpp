/*
	Copyright (C) 2008 - 2022
	by Mark de Wever <koraq@xs4all.nl>
	Part of the Battle for Wesnoth Project https://www.wesnoth.org/

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY.

	See the COPYING file for more details.
*/

#pragma once

#include "gui/widgets/styled_widget.hpp"

#include "gui/auxiliary/typed_formula.hpp"
#include "gui/core/widget_definition.hpp"
#include "gui/core/window_builder.hpp"

namespace gui2
{
namespace implementation
{
struct builder_spacer;
}

// ------------ WIDGET -----------{

/**
 * @ingroup GUIWidgetWML
 *
 * An empty widget to either fill in a widget since no empty items are allowed or to reserve a fixed space.
 *
 * Since every grid cell needs a widget this is a blank widget.
 * This widget can also be used to 'force' sizes - if either the width or the height is non-zero the spacer functions as a fixed size spacer.
 *
 * Since we're a kind of dummy class we're always active, our drawing does nothing.
 *
 * Key          |Type                                    |Default  |Description
 * -------------|----------------------------------------|---------|-----------
 * width        | @ref guivartype_f_unsigned "f_unsigned"|0        |The width of the spacer.
 * height       | @ref guivartype_f_unsigned "f_unsigned"|0        |The height of the spacer.
 * The variable available are the same as for the window resolution see @ref builder_window::window_resolution for the list of items.
 */
class spacer : public styled_widget
{
public:
	spacer(const implementation::builder_spacer& builder, const std::string& w = "0", const std::string& h = "0");

	/***** ***** ***** ***** layout functions ***** ***** ***** *****/

	/** See @ref widget::request_reduce_width. */
	virtual void request_reduce_width(const unsigned maximum_width) override;

	/** See @ref widget::request_reduce_height. */
	virtual void request_reduce_height(const unsigned maximum_height) override;

private:
	/** See @ref widget::calculate_best_size. */
	virtual point calculate_best_size() const override;

public:
	/***** ***** ***** ***** Inherited ***** ***** ***** *****/

	/** See @ref styled_widget::set_active. */
	virtual void set_active(const bool active) override;

	/** See @ref styled_widget::get_active. */
	virtual bool get_active() const override;

	/** See @ref styled_widget::get_state. */
	virtual unsigned get_state() const override;

	/** See @ref widget::disable_click_dismiss. */
	bool disable_click_dismiss() const override;

	/***** ***** ***** setters / getters for members ***** ****** *****/

private:
	typed_formula<unsigned> width_;
	typed_formula<unsigned> height_;

	bool fills_available_space();

	/** See @ref widget::impl_draw_background. */
	virtual void impl_draw_background() override;

public:
	/** Static type getter that does not rely on the widget being constructed. */
	static const std::string& type();

private:
	/** Inherited from styled_widget, implemented by REGISTER_WIDGET. */
	virtual const std::string& get_control_type() const override;
};

// }---------- DEFINITION ---------{

struct spacer_definition : public styled_widget_definition
{
	explicit spacer_definition(const config& cfg);

	struct resolution : public resolution_definition
	{
		explicit resolution(const config& cfg);
	};
};

// }---------- BUILDER -----------{

namespace implementation
{

struct builder_spacer : public builder_styled_widget
{
	explicit builder_spacer(const config& cfg);

	using builder_styled_widget::build;

	virtual std::unique_ptr<widget> build() const override;

private:
	// We store these as strings since they could contain formulas.
	// The widget handles the parsing.
	const std::string width_;
	const std::string height_;
};

} // namespace implementation

// }------------ END --------------

} // namespace gui2
